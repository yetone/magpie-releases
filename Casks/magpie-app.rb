cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4212"
  sha256 arm:   "8fb518fe6a477c7ee724afb87bd75b692133ad229a28738e872b8e580af56e22",
         intel: "eca9b7662aa0bd723bec2b343d71a96b9b383cbd4aadbb50969bae6ec1b5edc0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
