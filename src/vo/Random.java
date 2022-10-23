package vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Random {
	private String movie_id;
	private String movie_title;
	private String poster_url;
	private String gerne_name;
	private String runtime;
	private Date release_date;
}
