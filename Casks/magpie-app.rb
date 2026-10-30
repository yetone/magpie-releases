cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2199"
  sha256 arm:   "a336eaf51211e5dfa10fbe0aeab78eddd548fd4c82f80cc48591c65c1e30d480",
         intel: "0928acc233951e611da41c5aa40a94c90080ce96b7c7bc09299ae57f70bbb429"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
