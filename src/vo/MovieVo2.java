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

public class MovieVo2 {
	private String movie_id;
	private String movie_title;
	private String movie_title_en;
	private Date release_date;
	private String runtime;
	private String cum_audience;
	private String view_rating;
	private String poster_url;
	private float star_rating_avg;
}