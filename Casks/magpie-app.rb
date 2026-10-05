cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1040"
  sha256 arm:   "4cbfb9e1e1bcd23d87425980ef14d211ebd1a434b5a920e1b0ef7be9d640b88f",
         intel: "40269f13e6ccb262fe2e59676c889fb3eb734daaeb0d548cf5262a1b9cb6fcd9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
