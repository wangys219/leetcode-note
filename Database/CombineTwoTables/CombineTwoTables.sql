/*
 * 执行用时分布图中200ms完成的不知道是怎样的存在
 */
select a.FirstName, a.LastName, b.City, b.State from Person a left join Address b on a.PersonId=b.PersonId
