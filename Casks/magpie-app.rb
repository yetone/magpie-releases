cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3515"
  sha256 arm:   "b78bd66784476c8299711accc0356469a9e9bb0568f973411dbbf053d9568fd1",
         intel: "84fdddbda4365a990cb533644e9337acbd61b711d4a68f9734066235170cf282"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
