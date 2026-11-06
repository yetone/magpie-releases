cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3091"
  sha256 arm:   "b5311cc8f82cb8b31b7166f4caf887ab62265cba590ced5ac9f7ea9a0386d56b",
         intel: "1fe30b1078278c6e09eae08384b95eba0e36e545ed2b7df101d4a6b3822c5676"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
