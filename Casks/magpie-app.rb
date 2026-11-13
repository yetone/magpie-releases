cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4090"
  sha256 arm:   "cc93a9b556952b33b356fcd247a0f7ef1a5b2369029eceb1889be0225bf87cd8",
         intel: "02dea189fae2a39a1d9467e7f9e0f0cfa66d104caeca11775b9f608d31133d82"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
