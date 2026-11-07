cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3214"
  sha256 arm:   "5d8a0620eb1ce3340a146b77ab9d96ea6abbda68e79b85222099cd5f464bc10a",
         intel: "3e60ed115af589494f133db2ea6b8a7da659256261629c696bed0374dee39a72"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
