package custom.library;

import org.robotframework.javalib.library.AnnotationLibrary;

public class customLib extends AnnotationLibrary{
	
	public static final String ROBOT_LIBRARY_SCOPE = "GLOBAL";

	  /** Path, under which the keyword implementing classes can be found. */
	  private static final String KEYWORD_PATTERN = "custom/library/Keywords/*.class";
	  
	  public customLib() {
		    addKeywordPattern(KEYWORD_PATTERN);
		  }

}
