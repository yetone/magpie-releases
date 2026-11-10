cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3516"
  sha256 arm:   "cab468a28280e12469c7deb24c1440f9314023e9ec75236422663fcbe7d40f98",
         intel: "3d9eb3a34f0d4e388b1b5e0e49dce53fdc3a53fc561d3e0721d500dd206e8a07"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
