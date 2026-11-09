cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3358"
  sha256 arm:   "660ca4f9f38fc23ae78e29ad2c6cbee44462db39679c02e4abc8ab945f62c375",
         intel: "ce559a93be583417807dc9f076596c36470e684ea997e785e6fd5f99173939ad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
