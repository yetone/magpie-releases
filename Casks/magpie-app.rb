cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4906"
  sha256 arm:   "104d44965dd9814a299c6854d9709a747eb16942c99288a4c7e6ca4de2fdfa7e",
         intel: "4e043287432bc8b2b5d9683964c8da06853c8900611b79a3d712b88348654b4d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
