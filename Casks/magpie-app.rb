cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2640"
  sha256 arm:   "7999125566281e19f4e767e202f8f2197e7c7fe54ef5a3f068821cba29eb6763",
         intel: "727e4161b91b7e2102688d080137ddf63b5caaa6bfbe0763aae0e0cb7fa259f3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
