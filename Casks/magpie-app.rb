cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4847"
  sha256 arm:   "c0d3188f29c2ebad765c4507829df854212b96ac59ec3e6e5640251011dcad53",
         intel: "e429a185e9675d8c42f5856a30ee56ac496827cb5b3d70517d6c3544c9195818"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
