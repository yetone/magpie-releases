cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1981"
  sha256 arm:   "6f7dec795aa08a998ee95eaaccb304dc0991dd58742786986e97bf4be4858c77",
         intel: "9895ec9febdf15c51d85dbe23df799c22c1902f8ac4aecbd9db9bd3488d3a78d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
