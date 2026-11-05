cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3069"
  sha256 arm:   "b2281a1c114c76bb875b4e246c233f2ad8464c1c58192bc33c5795b4712dbbd7",
         intel: "0ae3e05dc086eec9665d44ab1ddec31a9d84648e300a1343bc228fc87c195f31"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
