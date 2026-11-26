cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4871"
  sha256 arm:   "a9de61f5bb267eabf70699f8148b5e89cf7d0945b7dfdadc07c1ac2cc668e3bf",
         intel: "0fd826b78d798fb115d98b6787973128b75216303abdce482fe5ac865408fbdd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
