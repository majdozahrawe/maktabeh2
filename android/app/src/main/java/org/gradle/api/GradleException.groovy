package org.gradle.api


/**
 * <p><code>GradleException</code> is the base class of all exceptions thrown by Gradle.</p>
 */
public class GradleException extends RuntimeException {
    public GradleException() {
        super();
    }

    public GradleException(String message) {
        super(message);
    }

    public GradleException(String message, @android.annotation.Nullable Throwable cause) {
        super(message, cause);
    }
}
