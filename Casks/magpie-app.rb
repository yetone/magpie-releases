cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3414"
  sha256 arm:   "4ea4f64813e3057fbb44a9bbcbcd9fb69ea96035795e5e505d3151e25ef3b013",
         intel: "5b9408d05cdeb693382cf4fbbb88d9a5ace9090b9835c3b37bc27528af90229b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
