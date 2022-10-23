package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class SelectMovie {
private String movie_title;
private String grnre_name;
private String filenames;
private int genre_id;
}
