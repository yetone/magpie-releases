cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4227"
  sha256 arm:   "7779353c6d698659979b84cc2a11b786026d57d6c789f3524946bb7fe9c29736",
         intel: "b0254a756179b6c90773822e1fdd52210bfb8ddda9c9210a8cb40e6a48ff09fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
