cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3621"
  sha256 arm:   "964c88bc5524189102b508d4a5f6143de3862b266e080681ca34eea600277e91",
         intel: "40c8e327aac6d2be0ff3ea77b45d5cd89bbff91ac95ec1966633cb88b7198acc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
