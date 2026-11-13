cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4025"
  sha256 arm:   "48a7d021ed6395588d54fa6abf3d8de2f65bf1c1b1b07a74f0694f498b5b1641",
         intel: "c9e8455c54efeb03005abed3da6fb342c05f2d63089c7176c2903ab380fff8ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
