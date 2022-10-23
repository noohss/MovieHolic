package vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Movie {
	private int movie_id;
	private String movie_title;
	private String movie_title_en;
	private Date release_date;
	private String runtime;
	private String cum_audience;
	private String view_rating;
	private String plot;
	private String poster_url;
	private String trailer_url;
	private int genre_id;
	private String genre_name;
	private double star_rating_avg;
}

