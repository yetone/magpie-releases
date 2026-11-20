cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4583"
  sha256 arm:   "404a0ac4c3fe5b41679f1a5b7bf90b0475118f0378ed52cdd4d65f1b3e851deb",
         intel: "2ed70c0bf1c259ea112bd30adc4595abb6acfb69de88fc3117e8a20d6121ceb7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
