from __future__ import annotations

from datetime import date
from dataclasses import dataclass
from typing import List


@dataclass
class ActionCustom:
    uid: str
    epci_id: str
    mesure_id: str
    name: str
    description: str
