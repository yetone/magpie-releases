cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4908"
  sha256 arm:   "4d3c405348122c7f47d8fab8328c8a19af44a9f971965597679fdf61ded29e26",
         intel: "41ddb0bd3a12d754ada7a143b382bcf0d0424d9470418fed8407ddb7e98ac3f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
