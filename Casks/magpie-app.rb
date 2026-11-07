cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3288"
  sha256 arm:   "83f16248296d9206daa8ae07ab72a4328076aa48012fc68df2a2ab2d456d81a9",
         intel: "3bb874f61ff7add6e7b2a78c72416a5f44bc0ba5ba78e0f48ccb4f82dfd37e36"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
