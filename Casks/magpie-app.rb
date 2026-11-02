cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2761"
  sha256 arm:   "007ca65597a997114a0702c914672543a35b030587ce213d9e96a6ce3626dd94",
         intel: "36849412ebe078f67e086ca9be46f9d27be1c20530aff2ffe88cfd0209554103"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
