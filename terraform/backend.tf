terraform {
  backend "s3" {
    bucket   = "tf-state-lab4"               # имя твоего бакета (должен существовать)
    key      = "lab4/terraform.tfstate"      # путь к файлу состояния внутри бакета
    region   = "ru-msk"                      # твой регион
    endpoint = "https://s3.ru-msk.vkcs.cloud"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }
}
