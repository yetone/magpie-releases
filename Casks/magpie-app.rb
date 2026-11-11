cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3801"
  sha256 arm:   "0a3e7a002a99cafec1412d47f9bb18a82eb8becec1fd1a99958ecf7ddb4a2f2f",
         intel: "6f0eb90e7a351ee8e6840cb725d87e51f036e5c34020106ca4ea383e764c71e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
