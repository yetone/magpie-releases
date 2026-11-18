cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4458"
  sha256 arm:   "ddcfe6a7bff68910dd083412d748f1915597a42595074a4003281c4d58f1888a",
         intel: "25cf89f8fd3c1b97dab5e5937ce245edb233310a520b329dc314f0e0878c9da5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
