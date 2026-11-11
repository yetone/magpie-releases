cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3673"
  sha256 arm:   "9d97735bebc2b5ef668268dd5e137876fb614b62fd25bdddf929a8ab44d4f302",
         intel: "cb9f8897fd878912c27d140304236f8887771633709d864be2be06a7583b7e0c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
