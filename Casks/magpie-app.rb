cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.937"
  sha256 arm:   "fecbe64c314fbf3fd4548a94d1fed33505eaffde8966e6af83a28e461b42fc88",
         intel: "68efbc8e1e66e487c299ca6dc95d14fef8e95fd22c26c47db3d1c2f21b917610"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
