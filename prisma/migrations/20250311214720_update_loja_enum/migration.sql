/*
  Warnings:

  - You are about to drop the `Loja` table. If the table is not empty, all the data it contains will be lost.

*/
-- CreateEnum
CREATE TYPE "segmento_cnpj" AS ENUM ('alimentacao', 'tecnologia', 'vestuario', 'saude', 'educacao', 'mecanica', 'outros');

-- DropTable
DROP TABLE "Loja";

-- CreateTable
CREATE TABLE "lojas" (
    "id" TEXT NOT NULL,
    "cnpj" VARCHAR(14) NOT NULL,
    "nome" VARCHAR(100) NOT NULL,
    "segmento" "segmento_cnpj" DEFAULT 'alimentacao',
    "endereco" VARCHAR(200) NOT NULL,
    "telefone" VARCHAR(20),
    "filiais" INTEGER NOT NULL,
    "data_abertura" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "lojas_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "lojas_cnpj_key" ON "lojas"("cnpj");
