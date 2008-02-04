package jorgan.disposition;

import java.util.HashMap;
import java.util.Map;

import bias.Configuration;
import bias.util.MessageBuilder;

/**
 * Element <code>i18n</code> utilities.
 */
public class Elements {

	private static Configuration config = Configuration.getRoot();

	private static Map<String, String> messages = new HashMap<String, String>();

	/**
	 * Get the display name of the given element.
	 * 
	 * @param element
	 *            element to get display name for
	 * @return the display name
	 */
	public static String getDisplayName(Element element) {

		String name = element.getName();
		if ("".equals(name)) {
			name = getDisplayName(element.getClass());
		}

		return name;
	}

	/**
	 * Get the display name of the given class.
	 * 
	 * @param clazz
	 *            class to get display name for
	 * @return the display name
	 */
	public static String getDisplayName(Class<?> clazz) {
		return getMessage(clazz, "this");
	}

	/**
	 * Get the display name of the given property of a class.
	 * 
	 * @param clazz
	 *            class to get display name for
	 * @param property
	 *            property
	 * @return the display name
	 */
	public static String getDisplayName(Class<?> clazz, String property) {
		return getMessage(clazz, property);
	}

	private static String getMessage(Class<?> clazz, String key) {
		String completeKey = clazz.getName() + "#" + key;
		String message = messages.get(completeKey);
		if (message == null) {
			message = config.get(clazz).get(key).read(new MessageBuilder())
					.build();
			messages.put(completeKey, message);
		}
		return message;
	}
}