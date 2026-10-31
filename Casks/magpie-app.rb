cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2503"
  sha256 arm:   "fcaba954f2682358ea330214457a54c8f08890f7d1a330190e19c6556e02bb49",
         intel: "46e55595cd1689d9583f841f803a9c266cb81518e182a529c24aa50ee5b49a83"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
