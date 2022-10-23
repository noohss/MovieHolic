package vo;

import java.sql.Date;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class MovieVo {
	private String movie_title;
	private String movie_title_en;
	private Date release_date;
	private String runtime;
	private String cum_audience;
	private String view_rating;
	private String plot;
	private String poster_url;
	private String trailer_url;
	private double star_rating_avg;
}