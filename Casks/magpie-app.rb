cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3871"
  sha256 arm:   "760c70b9f955fa3069ffa439e6ba7ddc5fdef015c812020c329f74a846301b7e",
         intel: "1c29a8099a440034f5fae02376b3ea605ffe5bd383a260561452a8396f863089"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
