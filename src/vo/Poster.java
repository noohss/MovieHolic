package vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Setter
public class Poster {
	private int movie_id;
	private String movie_title;
	private String poster_url;
	private String runtime;
	private Date release_date;
}
