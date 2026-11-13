cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3989"
  sha256 arm:   "322e1040481d4c15bc0371bf9174de0ec19642091ba6ef72a598997bf8e6dbfd",
         intel: "33aa364abf74aa757c2275727e645240f2464772875f57a040bc9f90d6a35560"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
