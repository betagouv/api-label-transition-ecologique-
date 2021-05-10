-- upgrade --
CREATE TABLE IF NOT EXISTS "aerich" (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "version" VARCHAR(255) NOT NULL,
    "app" VARCHAR(20) NOT NULL,
    "content" JSONB NOT NULL
);
CREATE TABLE IF NOT EXISTS "actioncustom" (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "uid" VARCHAR(36) NOT NULL,
    "epci_id" VARCHAR(36) NOT NULL,
    "mesure_id" VARCHAR(36) NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "description" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    "modified_at" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS "actionstatus" (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "action_id" VARCHAR(36) NOT NULL,
    "epci_id" VARCHAR(36) NOT NULL,
    "avancement" VARCHAR(36) NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    "modified_at" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS "indicateurvalue" (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "epci_id" VARCHAR(36) NOT NULL,
    "indicateur_id" VARCHAR(36) NOT NULL,
    "value" VARCHAR(36) NOT NULL,
    "year" INT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    "modified_at" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS "mesurecustom" (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "uid" VARCHAR(36) NOT NULL,
    "epci_id" VARCHAR(36) NOT NULL,
    "climat_pratic_thematic_id" VARCHAR(100) NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    "modified_at" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS "ficheaction" (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "epci_id" VARCHAR(36) NOT NULL,
    "uid" VARCHAR(36) NOT NULL,
    "custom_id" VARCHAR(36) NOT NULL,
    "avancement" VARCHAR(36) NOT NULL,
    "referentiel_action_ids" JSONB NOT NULL,
    "titre" VARCHAR(100) NOT NULL,
    "description" TEXT NOT NULL,
    "budget" SMALLINT NOT NULL,
    "porteur" VARCHAR(100) NOT NULL,
    "commentaire" TEXT NOT NULL,
    "date_debut" VARCHAR(36) NOT NULL,
    "date_fin" VARCHAR(36) NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    "modified_at" TIMESTAMPTZ NOT NULL  DEFAULT CURRENT_TIMESTAMP
);