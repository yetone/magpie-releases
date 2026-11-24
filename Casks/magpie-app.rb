cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4774"
  sha256 arm:   "b6f1beb016f50f849135bd36d467ea0608e798c34dc94e4689bf3f115196118e",
         intel: "6389b8792bed1ddcbe25751597a971bfedfaede055fb979395425f64d97947f4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
