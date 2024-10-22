from dagster import Definitions
from dagster_dbt import DbtCliResource
from .assets import coffee_house_dbt_dbt_assets
from .project import coffee_house_dbt_project
from .schedules import schedules

defs = Definitions(
    assets=[coffee_house_dbt_dbt_assets],
    schedules=schedules,
    resources={
        "dbt": DbtCliResource(project_dir=coffee_house_dbt_project),
    },
)