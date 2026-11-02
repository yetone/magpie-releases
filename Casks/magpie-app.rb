cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2683"
  sha256 arm:   "c3db33586368ac8d1de46f360b8ca072230de0c326395bbdd835b0d5c25188a9",
         intel: "ba87326e8d7481b8f0ecb44cc9361f29ff0aee669dbb00d1114272c17c61efe4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
