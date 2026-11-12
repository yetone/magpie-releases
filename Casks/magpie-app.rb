cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3931"
  sha256 arm:   "cfd8d1ccc8af67040e00a2eb5d5bf8f159e95b120c76bb7b70e1bbc695e804a8",
         intel: "f507186facd9024939e2d93b1d4445d96b4a5580c12d405df2d584a64ae63396"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
