cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2801"
  sha256 arm:   "48a6479f33596292a47c33d93866a2623a95f84c2b20c6d2d9e8c84e4a4301a0",
         intel: "1417680d0e0eb6e218273d9218738e6b73fb922139fd2e237f400c5ffb3e418d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
