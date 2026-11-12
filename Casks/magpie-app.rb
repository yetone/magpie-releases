cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3934"
  sha256 arm:   "fe9885b7bb4e0e254af25a4d24c6931a976dc61305dd372caea7e62fef3f7229",
         intel: "0a4b72cf18b830978bdb5257011132829596790864b80cbbcdc3db5ee314e8f6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
