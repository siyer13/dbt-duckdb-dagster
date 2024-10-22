from pathlib import Path

from dagster_dbt import DbtProject

coffee_house_dbt_project = DbtProject(
    project_dir=Path(__file__).joinpath("..", "..", "..", "coffee_house_dbt").resolve(),
    packaged_project_dir=Path(__file__).joinpath("..", "..", "dbt-project").resolve(),
)
coffee_house_dbt_project.prepare_if_dev()