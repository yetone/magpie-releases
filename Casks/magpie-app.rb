cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3958"
  sha256 arm:   "91d0acd7a64867c06079d7bda34e0813eb0dcf87016ef238d9d27ae9e5763a9c",
         intel: "a2b1d42e22a8d055bf4559b5ec479558e23e399857977a4bd372629262e5fa64"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
