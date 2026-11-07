cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3286"
  sha256 arm:   "070dd4a9074c46a5d339c8a362c51ee92724c61cd15aaaf47e247c3cecdb9ab1",
         intel: "a6fb57dfe73c4fc1ae445ca33374d3c8e9f64ecfc27fd106257ed00175fcbafc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
