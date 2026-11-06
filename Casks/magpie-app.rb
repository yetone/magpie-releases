cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3181"
  sha256 arm:   "34b30e18d3361e3d52561c8bd724ea19ed63cb38eb973731d8d264318a51a756",
         intel: "d1512f4a64abd8bbc9f5fba92acdde32e2167daef07d6e78d78cc93d6e5181e0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
