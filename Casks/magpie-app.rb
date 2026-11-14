cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4211"
  sha256 arm:   "14e0cca55e778bd8b8f405b93277f12bf92fe76c681e7360ef2ab59977202e01",
         intel: "d46385d16eb881ed3b6924089da898fde27cde75076efe47037684a14d52498c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
