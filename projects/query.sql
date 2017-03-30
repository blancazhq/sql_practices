\! echo 'What are all projects that use JavaScript?'
SELECT project.name, tech.name FROM project_uses_tech INNER JOIN project ON project_uses_tech.project_id = project.id INNER JOIN tech ON project_uses_tech.tech_id = tech.id WHERE tech.name ='JavaScript';

\! echo 'What are all technologies used by the Personal Website?'
SELECT project.name, tech.name FROM project_uses_tech INNER JOIN project ON project_uses_tech.project_id = project.id INNER JOIN tech ON project_uses_tech.tech_id = tech.id WHERE project.name='Personal Website';

\! echo 'Perform a left outer join from the tech table to the project_uses_tech table - which techs has no associated project?'
SELECT tech.name, count(project_id) FROM tech LEFT JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id GROUP BY tech.id ORDER BY count(project_id);

\! echo 'Based on the previous query, get the count of the number of techs used by each project.'
SELECT tech.name, count(project_id) FROM tech LEFT JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id GROUP BY tech.id ORDER BY count(project_id);

\! echo 'Perform a left outer join from the project table to the project_users_tech table - which projects has no associated tech?'
SELECT project.name, count(tech_id) FROM project LEFT JOIN project_uses_tech ON project_uses_tech.tech_id = project.id GROUP BY project.id ORDER BY count(tech_id);

\! echo 'Based on the previous query, get the count of the number of projects that use each tech.'
SELECT project.name, count(tech_id) FROM project LEFT JOIN project_uses_tech ON project_uses_tech.tech_id = project.id GROUP BY project.id ORDER BY count(tech_id);

\! echo 'List all projects along with each technology used by it. You will need to do a three-way join.'
SELECT project.name, tech.name FROM project_uses_tech INNER JOIN project ON project_uses_tech.project_id = project.id INNER JOIN tech ON project_uses_tech.tech_id = tech.id;

\! echo 'List all the distinct techs that are used by at least one project.'
SELECT tech.name, count(project_id) FROM tech LEFT JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id GROUP BY tech.id HAVING count(project_id)>0 ORDER BY count(project_id);

\! echo 'List all the distinct techs that are not used by any projects.'
SELECT tech.name, count(project_id) FROM tech LEFT JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id GROUP BY tech.id HAVING count(project_id)=0 ORDER BY count(project_id);

\! echo 'List all the distinct projects that use at least one tech.'
SELECT DISTINCT project.name FROM project INNER JOIN project_uses_tech ON project_uses_tech.project_id = project.id;

\! echo 'List all the distinct projects that use no tech.'
(SELECT DISTINCT name FROM project) EXCEPT (SELECT DISTINCT project.name FROM project INNER JOIN project_uses_tech ON project_uses_tech.project_id = project.id);
\! echo 'Order the projects by how many tech it uses.'
SELECT project.name, count(tech_id) FROM project LEFT JOIN project_uses_tech ON project_uses_tech.project_id = project.id GROUP BY project.id ORDER BY count(tech_id);

\! echo 'Order the tech by how many projects use it.'
SELECT tech.name, count(project_id) FROM tech LEFT JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id GROUP BY tech.id ORDER BY count(project_id);

\! echo 'What is the average number of techs used by a project?'
SELECT avg(x) AS average FROM (SELECT project.name, count(tech_id) AS x FROM project LEFT JOIN project_uses_tech ON project_uses_tech.project_id = project.id GROUP BY project.id) AS count;
