# Codebook of the project

Result data have been retrieved [from the project](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
The following set of data transformations has been performed:
1. Subject data ('Y' file data) were merged with experiment data ('X' file data)
2. Result datasets from train and test were combined together.
3. Extracts only the measurements on the mean and standard deviation for each measurement from step 2. 
4. Replace activity code with a corresponding descriptive label
5. Group data from step 4 by activity and subject and calculate mean for each variable.

<table>
	<thead>
		<tr>
			<td>Position</td>
			<td>Variable</td>
			<td>Description</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Activity</td>
			<td>
				Activity performed by a subject. Possible values:<br>
				<ul>
					<li>Walking</li>
					<li>Walking upstairs</li>
					<li>Walking downstairs</li>
					<li>Sitting</li>
					<li>Standing</li>
					<li>Laying</li>
				</ul>
			</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Subject</td>
			<td>Numeric identifier of a subject who carried the experiment. Consists of integer values from  to 30</td>
		</tr>
		<tr>
			<td>3</td>
			<td>timeBodyAcc Mean X</td>
			<td>Average value of body acceleration means in time dimension in X axe</td>
		</tr>
		<tr>
			<td>4</td>
			<td>timeBodyAcc Mean Y</td>
			<td>Average value of body acceleration means in time dimension in Y axe</td>
		</tr>
		<tr>
			<td>5</td>
			<td>timeBodyAcc Mean Z</td>
			<td>Average value of body acceleration means in time dimension in Z axe</td>
		</tr>
		<tr>
			<td>6</td>
			<td>timeBodyAcc SD X</td>
			<td>Average value of body acceleration standard deviations in time dimension in X axe</td>
		</tr>
		<tr>
			<td>7</td>
			<td>timeBodyAcc SD Y</td>
			<td>Average value of body acceleration standard deviations in time dimension in Y axe</td>
		</tr>
		<tr>
			<td>8</td>
			<td>timeBodyAcc SD Z</td>
			<td>Average value of body acceleration standard deviations in time dimension in Z axe</td>
		</tr>
		<tr>
			<td>9</td>
			<td>timeGravityAcc Mean X</td>
			<td>Average value of gravity acceleration means in time dimension in X axe</td>
		</tr>
		<tr>
			<td>10</td>
			<td>timeGravityAcc Mean Y</td>
			<td>Average value of gravity acceleration means in time dimension in Y axe</td>
		</tr>
		<tr>
			<td>11</td>
			<td>timeGravityAcc Mean Z</td>
			<td>Average value of gravity acceleration means in time dimension in Z axe</td>
		</tr>
		<tr>
			<td>12</td>
			<td>timeGravityAcc SD X</td>
			<td>Average value of gravity acceleration standard deviations in time dimension in X axe</td>
		</tr>
		<tr>
			<td>13</td>
			<td>timeGravityAcc SD Y</td>
			<td>Average value of gravity acceleration standard deviations in time dimension in Y axe</td>
		</tr>
		<tr>
			<td>14</td>
			<td>timeGravityAcc SD Z</td>
			<td>Average value of gravity acceleration standard deviations in time dimension in Z axe</td>
		</tr>
		<tr>
			<td>15</td>
			<td>timeBodyAccJerk Mean X</td>
			<td>Average value of body acceleration(sudden movements) means in time dimension in X axe</td>
		</tr>
		<tr>
			<td>16</td>
			<td>timeBodyAccJerk Mean Y</td>
			<td>Average value of body acceleration(sudden movements) means in time dimension in Y axe</td>
		</tr>
		<tr>
			<td>17</td>
			<td>timeBodyAccJerk Mean Z</td>
			<td>Average value of body acceleration(sudden movements) means in time dimension in Z axe</td>
		</tr>
		<tr>
			<td>18</td>
			<td>timeBodyAccJerk SD X</td>
			<td>Average value of body acceleration(sudden movements) standard deviations in time dimension in X axe</td>
		</tr>
		<tr>
			<td>19</td>
			<td>timeBodyAccJerk SD Y</td>
			<td>Average value of body acceleration(sudden movements) standard deviations in time dimension in Y axe</td>
		</tr>
		<tr>
			<td>20</td>
			<td>timeBodyAccJerk SD Z</td>
			<td>Average value of body acceleration(sudden movements) standard deviations in time dimension in Z axe</td>
		</tr>
		<tr>
			<td>21</td>
			<td>timeBodyGyro Mean X</td>
			<td>Average value of body acceleration (taken from gyroscope) means in time dimension in X axe</td>
		</tr>
		<tr>
			<td>22</td>
			<td>timeBodyGyro Mean Y</td>
			<td>Average value of body acceleration (taken from gyroscope) means in time dimension in Y axe</td>
		</tr>
		<tr>
			<td>23</td>
			<td>timeBodyGyro Mean Z</td>
			<td>Average value of body acceleration (taken from gyroscope) means in time dimension in Z axe</td>
		</tr>
		<tr>
			<td>24</td>
			<td>timeBodyGyro SD X</td>
			<td>Average value of body acceleration (taken from gyroscope) standard deviations in time dimension in X axe</td>
		</tr>
		<tr>
			<td>25</td>
			<td>timeBodyGyro SD Y</td>
			<td>Average value of body acceleration (taken from gyroscope) standard deviations in time dimension in Y axe</td>
		</tr>
		<tr>
			<td>26</td>
			<td>timeBodyGyro SD Z</td>
			<td>Average value of body acceleration (taken from gyroscope) standard deviations in time dimension in Z axe</td>
		</tr>
		<tr>
			<td>27</td>
			<td>timeBodyGyroJerk Mean X</td>
			<td>Average value of sudden movement's body acceleration (taken from gyroscope) means in time dimension in X axe</td>
		</tr>
		<tr>
			<td>28</td>
			<td>timeBodyGyroJerk Mean Y</td>
			<td>Average value of sudden movement's body acceleration (taken from gyroscope) means in time dimension in Y axe</td>
		</tr>
		<tr>
			<td>29</td>
			<td>timeBodyGyroJerk Mean Z</td>
			<td>Average value of sudden movement's body acceleration (taken from gyroscope) means in time dimension in Z axe</td>
		</tr>
		<tr>
			<td>30</td>
			<td>timeBodyGyroJerk SD X</td>
			<td>Average value of sudden movement's body acceleration (taken from gyroscope) standard deviations in time dimension in X axe</td>
		</tr>
		<tr>
			<td>31</td>
			<td>timeBodyGyroJerk SD Y</td>
			<td>Average value of sudden movement's body acceleration (taken from gyroscope) standard deviations in time dimension in Y axe</td>
		</tr>
		<tr>
			<td>32</td>
			<td>timeBodyGyroJerk SD Z</td>
			<td>Average value of sudden movement's body acceleration (taken from gyroscope) standard deviations in time dimension in Z axe</td>
		</tr>
		<tr>
			<td>33</td>
			<td>timeBodyAccMag Mean</td>
			<td>Average value of body acceleration means in time dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		<tr>
			<td>34</td>
			<td>timeBodyAccMag SD</td>
			<td>Average value of body acceleration standard deviations in time dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		<tr>
			<td>35</td>
			<td>timeGravityAccMag Mean</td>
			<td>Average value of gravity acceleration means in time dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		<tr>
			<td>36</td>
			<td>timeGravityAccMag SD</td>
			<td>Average value of gravity acceleration standard deviations in time dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		<tr>
			<td>37</td>
			<td>timeBodyAccJerkMag Mean</td>
			<td>Average value of body's sudden movements acceleration means in time dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		<tr>
			<td>38</td>
			<td>timeBodyAccJerkMag SD</td>
			<td>Average value of body's sudden movements acceleration standard deviations in time dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		<tr>
			<td>39</td>
			<td>timeBodyGyroMag Mean</td>
			<td>Average value of body acceleration means in time dimension applied to Fast Fourier Transform(from the gyroscope)</td>
		</tr>
		<tr>
			<td>40</td>
			<td>timeBodyGyroMag SD</td>
			<td>Average value of body acceleration standard deviations in time dimension applied to Fast Fourier Transform(from the gyroscope)</td>
		</tr>
		<tr>
			<td>41</td>
			<td>timeBodyGyroJerkMag Mean</td>
			<td>Average value of body's sudden movements acceleration means in time dimension applied to Fast Fourier Transform(from the gyroscope)</td>
		</tr>
		<tr>
			<td>42</td>
			<td>timeBodyGyroJerkMag SD</td>
			<td>Average value of body's sudden movements acceleration standard deviations in time dimension applied to Fast Fourier Transform(from the gyroscope)</td>
		</tr>
		<tr>
			<td>43</td>
			<td>freqBodyAcc Mean X</td>
			<td>Average value of body acceleration means in frequency dimension in X axe</td>
		</tr>
		<tr>
			<td>44</td>
			<td>freqBodyAcc Mean Y</td>
			<td>Average value of body acceleration means in frequency dimension in Y axe</td>
		</tr>
		<tr>
			<td>45</td>
			<td>freqBodyAcc Mean Z</td>
			<td>Average value of body acceleration means in frequency dimension in Z axe</td>
		</tr>
		<tr>
			<td>46</td>
			<td>freqBodyAcc SD X</td>
			<td>Average value of body acceleration standard deviations in frequency dimension in X axe</td>
		</tr>
		<tr>
			<td>47</td>
			<td>freqBodyAcc SD Y</td>
			<td>Average value of body acceleration standard deviations in frequency dimension in Y axe</td>
		</tr>
		<tr>
			<td>48</td>
			<td>freqBodyAcc SD Z</td>
			<td>Average value of body acceleration standard deviations in frequency dimension in Z axe</td>
		</tr>
		<tr>
			<td>49</td>
			<td>freqBodyAccJerk Mean X</td>
			<td>Average value of body's sudden movements acceleration means in frequency dimension in X axe</td>
		</tr>
		<tr>
			<td>50</td>
			<td>freqBodyAccJerk Mean Y</td>
			<td>Average value of body's sudden movements acceleration means in frequency dimension in Y axe</td>
		</tr>
		<tr>
			<td>51</td>
			<td>freqBodyAccJerk Mean Z</td>
			<td>Average value of body's sudden movements acceleration means in frequency dimension in Z axe</td>
		</tr>
		<tr>
			<td>52</td>
			<td>freqBodyAccJerk SD X</td>
			<td>Average value of body's sudden movements acceleration standard deviations in frequency dimension in X axe</td>
		</tr>
		<tr>
			<td>53</td>
			<td>freqBodyAccJerk SD Y</td>
			<td>Average value of body's sudden movements acceleration standard deviations in frequency dimension in Y axe</td>
		</tr>
		<tr>
			<td>54</td>
			<td>freqBodyAccJerk SD Z</td>
			<td>Average value of body's sudden movements acceleration standard deviations in frequency dimension in Z axe</td>
		</tr>
		<tr>
			<td>55</td>
			<td>freqBodyGyro Mean X</td>
			<td>Average value of body acceleration means in frequency dimension in X axe (taken from gyroscope)</td>
		</tr>
		<tr>
			<td>56</td>
			<td>freqBodyGyro Mean Y</td>
			<td>Average value of body acceleration means in frequency dimension in Y axe (taken from gyroscope)</td>
		</tr>
		<tr>
			<td>57</td>
			<td>freqBodyGyro Mean Z</td>
			<td>Average value of body acceleration means in frequency dimension in Z axe (taken from gyroscope)</td>
		</tr>
		<tr>
			<td>58</td>
			<td>freqBodyGyro SD X</td>
			<td>Average value of body acceleration standard deviations in frequency dimension in X axe (taken from gyroscope)</td>
		</tr>
		<tr>
			<td>59</td>
			<td>freqBodyGyro SD Y</td>
			<td>Average value of body acceleration standard deviations in frequency dimension in Y axe (taken from gyroscope)</td>
		</tr>
		<tr>
			<td>60</td>
			<td>freqBodyGyro SD Z</td>
			<td>Average value of body acceleration standard deviations in frequency dimension in Z axe (taken from gyroscope)</td>
		</tr>
		
		<tr>
			<td>61</td>
			<td>freqBodyAccMag Mean</td>
			<td>Average value of body acceleration means in frequency dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		<tr>
			<td>62</td>
			<td>freqBodyAccMag SD</td>
			<td>Average value of body acceleration standard deviations in frequency dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		
		<tr>
			<td>63</td>
			<td>freqBodyAccJerkMag Mean</td>
			<td>Average value of body's sudden movements acceleration means in frequency dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		<tr>
			<td>64</td>
			<td>freqBodyAccJerkMag SD</td>
			<td>Average value of body's sudden movements acceleration standard deviations in frequency dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		<tr>
			<td>65</td>
			<td>freqBodyBodyAccJerkMag Mean</td>
			<td>Average value of body's sudden movements acceleration means in frequency dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		<tr>
			<td>66</td>
			<td>freqBodyBodyAccJerkMag SD</td>
			<td>Average value of body's sudden movements acceleration standard deviations in frequency dimension applied to Fast Fourier Transform(from the accelerometer)</td>
		</tr>
		<tr>
			<td>67</td>
			<td>freqBodyBodyGyroMag Mean</td>
			<td>Average value of body acceleration means in frequency dimension applied to Fast Fourier Transform(from the gyroscope)</td>
		</tr>
		<tr>
			<td>68</td>
			<td>freqBodyBodyGyroMag SD</td>
			<td>Average value of body acceleration standard deviations in frequency dimension applied to Fast Fourier Transform(from the gyroscope)</td>
		</tr>
		<tr>
			<td>69</td>
			<td>freqBodyBodyGyroJerkMag Mean</td>
			<td>Average value of body's sudden movements acceleration means in frequency dimension applied to Fast Fourier Transform(from the gyroscope)</td>
		</tr>
		<tr>
			<td>70</td>
			<td>freqBodyBodyGyroJerkMag SD</td>
			<td>Average value of body's sudden movements acceleration standard deviations in frequency dimension applied to Fast Fourier Transform(from the gyroscope)</td>
		</tr>
	</tbody>
</table>