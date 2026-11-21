cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4625"
  sha256 arm:   "d139e442be9a1e3f85f0dc287d5c99b9de5a4aa78307f021654ef7da7d229ad7",
         intel: "2f94470ead4c703597f57d93ff8c28ef5b39af6077509d7ecbc0329a224135b7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
