cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4092"
  sha256 arm:   "84842cc7b70b12138675b79d0348d2488d9e51d3d69ac9c7555439f56d612c71",
         intel: "5cd44f512c22442ae9eec7b2c7cf7e50c39314578e26d7153830ce589c453b43"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
