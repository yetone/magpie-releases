cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4540"
  sha256 arm:   "c2f2e451ac5af1ce8db7686415a631fea2442204cf95b9d72abc6e53522588a0",
         intel: "33bf3ad9dd714813e510d46a9fba450c5b30a1b50f460c73019226e6941d5142"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
